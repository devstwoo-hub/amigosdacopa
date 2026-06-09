update public.matches
set
  home_team = replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(home_team,
    'Ã','Á'),'Ã¡','á'),'Ã¢','â'),'Ã£','ã'),'Ã©','é'),'Ãª','ê'),'Ã­','í'),'Ã³','ó'),'Ã´','ô'),'Ãµ','õ'),'Ãº','ú'),'Ã¼','ü'),'Ã§','ç'),'Ã‡','Ç'),'Âº','º'),'Ã‰','É'),'Ã“','Ó'),'Ãš','Ú'),
  away_team = replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(away_team,
    'Ã','Á'),'Ã¡','á'),'Ã¢','â'),'Ã£','ã'),'Ã©','é'),'Ãª','ê'),'Ã­','í'),'Ã³','ó'),'Ã´','ô'),'Ãµ','õ'),'Ãº','ú'),'Ã¼','ü'),'Ã§','ç'),'Ã‡','Ç'),'Âº','º'),'Ã‰','É'),'Ã“','Ó'),'Ãš','Ú'),
  venue = replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(venue,
    'Ã','Á'),'Ã¡','á'),'Ã¢','â'),'Ã£','ã'),'Ã©','é'),'Ãª','ê'),'Ã­','í'),'Ã³','ó'),'Ã´','ô'),'Ãµ','õ'),'Ãº','ú'),'Ã¼','ü'),'Ã§','ç'),'Ã‡','Ç'),'Âº','º'),'Ã‰','É'),'Ã“','Ó'),'Ãš','Ú')
where
  home_team like '%Ã%'
  or away_team like '%Ã%'
  or venue like '%Ã%'
  or home_team like '%Â%'
  or away_team like '%Â%'
  or venue like '%Â%';

notify pgrst, 'reload schema';
