let
    Source = Csv.Document(File.Contents("C:\Users\joshc\Downloads\archive\Sales-Export_2019-2020.csv"),[Delimiter=",", Columns=10, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"country", type text}, {" order_value_EUR ", type number}, {" cost ", type number}, {"date", type text}, {"category", type text}, {"customer_name", type text}, {"sales_manager", type text}, {"sales_rep", type text}, {"device_type", type text}, {"order_id", type text}}),
    #"Changed Type with Locale" = Table.TransformColumnTypes(#"Changed Type", {{"date", type date}}, "en-US"),
    #"Changed Type1" = Table.TransformColumnTypes(#"Changed Type with Locale",{{" cost ", Currency.Type}, {" order_value_EUR ", Currency.Type}}),
    #"Renamed Columns" = Table.RenameColumns(#"Changed Type1",{{" order_value_EUR ", "order_value_GBP"}})
in
    #"Renamed Columns"