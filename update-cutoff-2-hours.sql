drop policy if exists "predictions_insert_anon" on public.predictions;

create policy "predictions_insert_anon"
on public.predictions for insert
to anon
with check (
  exists (
    select 1
    from public.matches
    where matches.id = match_id
      and matches.status = 'scheduled'
      and (
        matches.kickoff_at is null
        or matches.kickoff_at > now() + interval '2 hours'
      )
  )
);

notify pgrst, 'reload schema';
