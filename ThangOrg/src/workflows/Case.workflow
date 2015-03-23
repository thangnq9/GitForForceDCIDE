<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>thong_bao_1</fullName>
        <description>Thong báo thông báo</description>
        <protected>false</protected>
        <recipients>
            <recipient>Sales_Rep_APAC</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportCaseResponse</template>
    </alerts>
    <rules>
        <fullName>Thang - Notify at Large account</fullName>
        <actions>
            <name>thong_bao_1</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Account.AnnualRevenue</field>
            <operation>greaterThan</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.NumberOfEmployees</field>
            <operation>greaterThan</operation>
            <value>3000</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
