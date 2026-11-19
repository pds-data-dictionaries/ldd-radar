<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:radar  Version:1.3.1.0 - Thu Nov 19 22:36:39 UTC 2026 -->
  <!-- Generated from the PDS4 Information Model Version 1.26.0.0 - System Build 16.1	 -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/radar/v1" prefix="radar"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="//radar:range_depth_distance">
      <sch:let name="range_depth_unit" value="@unit"/>
      <sch:assert test="//radar:range_resolution_distance">
        <title>//radar:range_depth_distance/Rule</title>
        If range_depth_distance is specified, range_resolution_distance must also be specified.</sch:assert>
      <sch:assert test="//radar:range_resolution_distance[@unit=$range_depth_unit]">
        <title>//radar:range_depth_distance/Rule</title>
        Unit for range_depth_distance unit must match unit for range_resolution_distance.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//radar:range_depth_time">
      <sch:let name="range_depth_unit" value="@unit"/>
      <sch:assert test="//radar:range_resolution_time">
        <title>//radar:range_depth_time/Rule</title>
        If range_depth_time is specified, range_resolution_time must also be specified.</sch:assert>
      <sch:assert test="//radar:range_resolution_time[@unit=$range_depth_unit]">
        <title>//radar:range_depth_time/Rule</title>
        Unit for range_depth_time unit must match unit for range_resolution_time.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="radar:Groundbased_Radar/radar:observation_purpose">
      <sch:assert test=". = ('Doppler', 'Range', 'Range-Doppler', 'Total Power')">
        <title>radar:Groundbased_Radar/radar:observation_purpose/radar:observation_purpose</title>
        The attribute radar:Groundbased_Radar/radar:observation_purpose must be equal to one of the following values 'Doppler', 'Range', 'Range-Doppler', 'Total Power'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="radar:Sampling_Properties/radar:sample_type">
      <sch:assert test=". = ('Complex', 'Real')">
        <title>radar:Sampling_Properties/radar:sample_type/radar:sample_type</title>
        The attribute radar:Sampling_Properties/radar:sample_type must be equal to one of the following values 'Complex', 'Real'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
