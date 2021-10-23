<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SY01500SSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('SY01500')->insert([
            'LSTUSRED'=>  "sa",
            'CREATDDT'=>  "2019-12-09 00:00:00.000",
            'MODIFDT'=>   "2019-12-09 00:00:00.000",
            'CMPANYID'=>  '1',
            'CMPNYNAM'=>  "HEYDUDE",
            'TAXEXMT1'=>  "",
            'TAXEXMT2'=>  "",
            'TAXREGTN'=>  "",
            'COPTXSCH'=>  "",
            'COSTXSCH'=>  "",
            'LOCATNNM'=>  "",
            'ADRCNTCT'=>  "",
            'ADDRESS1'=>  "",
            'ADDRESS2'=>  "",
            'ADDRESS3'=>  "",
            'CITY'=>  "",
            'COUNTY'=>  "",
            'STATE'=>  "",
            'ZIPCODE'=>  "",
            'PHONE1'=>  "",
            'PHONE2'=>  "",
            'PHONE3'=>  "",
            'FAXNUMBR'=>  "", 
            'USESCRTY'=>  '1',
            'UDCOSTR1'=>  "",
            'UDCOSTR2'=>  "",
            'CMPCNTRY'=>  "",
            'NOTEINDX'=>  "116.00000",
            'PPSFRNUM'=>  "0",
            'PPSTAXRT'=> '0',
            'PPSVNDID'=>  "0",
            'VATMODE' =>  '0',
            'LOCATNID'=>  "0",
            'INTERID'=>  "0",
            'ACSEGSEP'=>  "0", 
            'SECOPTS'=>  '0x00000000',
            'DisplayRegisteredPalette'=>  '0',
            'Company_Options' =>  '0x01400000',
            'Vets100CompanyNumber'=>  "'0'",
            'TYPEOFBUSINESS'=>  "0",
            'DUNS_Number'=>  "0",
            'SICNUMBER'=>  "0",
            'GOVCRPID'=>  "0",
            'BRNCHNMBR'=>  "0",
            'DFLTTXDTLID'=>  "0",
            'PurchasesTaxDetailID'=>  "0",
            'CCode'=>  "0",  
            'IVTRFDOCFMT'=> '0',
            'Offline_User'=>  "0", 
            'WORKFLOWENABLED'=>  '0',
            'CrmCredentialsMethod'=> '0',
            'CrmOrganizationName'=> "0",
            'CrmServiceUrl'=> "0",
            'EnableGLReporting'=>  '0',
            'EnableAAReporting'=>  '0',
            'UseDateEffectiveTax'=>  '0',
            'DateToUse'=> '0',
        ]);
    }
}
