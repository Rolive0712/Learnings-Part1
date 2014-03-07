Dim sqlda As New SqlDataAdapter
        sqlda = New SqlDataAdapter(sqlCmd)
        sqlda.FillSchema(dt, SchemaType.Source) 'load all columns w/o data

        dt.Columns("Tier").DataType = Type.GetType("System.String") //change datatype before fill
        sqlda.Fill(dt) 'fill data as per schema
        logobj.WriteFunctionEntryLog("Extracting data...")
        
        //Check value and based on value load new data
        For k As Integer = 0 To dt.Rows.Count - 1
            If dt.Rows(k)("Tier").ToString() = "4" Then
                dt.Rows(k)("Tier") = "N/A"
            End If
        Next
