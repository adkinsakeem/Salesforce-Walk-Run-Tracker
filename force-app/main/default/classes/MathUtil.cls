public class MathUtil {
    @InvocableMethod(Label='Add 2 Numbers')
    public static List<Integer> add(List<FlowInput> lstFI){
        List<Integer> results = new List<Integer>();
        for (FlowInput FI : lstFI) {
            Integer myInt = FI.int1 + FI.int2;
            results.add(myInt); 
        }
        return results;
        }
    
    public class FlowInput{
        @InvocableVariable(Label='Int 1' Required=True)
        public Integer int1;
        @InvocableVariable(Label='Int 2' Required=True)
        public Integer int2;
    }
}