<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:radar  Version:1.0.0.0 - Wed Oct 20 19:31:54 UTC 2021 -->
  <!-- Generated from the PDS4 Information Model Version 1.16.0.0 - System Build 11.1 -->
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
    <sch:rule context="radar:Groundbased_Radar/radar:observation_purpose">
      <sch:assert test=". = ('Doppler', 'Range', 'Range-Doppler', 'Total Power')">
        <title>radar:Groundbased_Radar/radar:observation_purpose/radar:observation_purpose</title>
        The attribute radar:Groundbased_Radar/radar:observation_purpose must be equal to one of the following values 'Doppler', 'Range', 'Range-Doppler', 'Total Power'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="radar:Modulation/radar:power_modulation">
      <sch:assert test=". = ('CW', 'Pulsed')">
        <title>radar:Modulation/radar:power_modulation/radar:power_modulation</title>
        The attribute radar:Modulation/radar:power_modulation must be equal to one of the following values 'CW', 'Pulsed'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="radar:Modulation/radar:waveform_modulation">
      <sch:assert test=". = ('Barker BPSK', 'Linear Chirp', 'Non-repeating BPSK', 'Other', 'Other BPSK', 'Other Chirp', 'Repeating LFSR BPSK', 'Uncoded')">
        <title>radar:Modulation/radar:waveform_modulation/radar:waveform_modulation</title>
        The attribute radar:Modulation/radar:waveform_modulation must be equal to one of the following values 'Barker BPSK', 'Linear Chirp', 'Non-repeating BPSK', 'Other', 'Other BPSK', 'Other Chirp', 'Repeating LFSR BPSK', 'Uncoded'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="radar:Target_Properties/radar:roundtrip_lighttime">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>radar:Target_Properties/radar:roundtrip_lighttime/radar:roundtrip_lighttime</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="radar:Transmitter_Properties/radar:range_resolution">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>radar:Transmitter_Properties/radar:range_resolution/radar:range_resolution</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
