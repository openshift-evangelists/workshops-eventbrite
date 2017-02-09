# Eventbrite order for workshops

Process Eventbrite list of oders for workshops.

## Usage

```
./process.rb [source.csv] [attendees.yml]
```

Reads the CSV file passed as 1st argument (defaults to `source.csv`) and exports yaml for 
workshop builder to YAML file passed as 2nd argument (defaults to `attendees.yml`).

## Getting CSV

Log into Eventbrite and open your event detail, in left menu choose `Orders` under 
`Manage Attendees`. Choose `Export to CSV` in `EXPORT:` and click `PRINT PREVIEW`.

## License

This tool is released under the MIT License.