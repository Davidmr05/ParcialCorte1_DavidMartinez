import java.io.FileInputStream;
import java.io.InputStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import java.lang.Math;

public class TrigTest {
    public static void main(String[] args) throws Exception {
        
        String inputFile = args.length > 0 ? args[0] : null;
        InputStream is = System.in;
        if (inputFile != null) is = new FileInputStream(inputFile);

        
        ANTLRInputStream input = new ANTLRInputStream(is);
        TrigLexer lexer = new TrigLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        TrigParser parser = new TrigParser(tokens);

        
        ParseTree tree = parser.prog();

        
        EvalVisitor eval = new EvalVisitor();
        eval.visit(tree);
    }
}


class EvalVisitor extends TrigBaseVisitor<Double> {

    @Override
    public Double visitTrigFunc(TrigParser.TrigFuncContext ctx) {
        String func = ctx.FUNC().getText();
        double num = Double.parseDouble(ctx.NUMBER().getText());

        
        double radians = Math.toRadians(num);

        
        double result = 0;
        switch (func) {
            case "Sin":
                result = Math.sin(radians);
                break;
            case "Cos":
                result = Math.cos(radians);
                break;
            case "Tan":
                result = Math.tan(radians);
                break;
        }

        
        System.out.println(Math.round(result));
        return result;
    }
}