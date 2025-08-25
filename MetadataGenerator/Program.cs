using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;

internal class Program
{
    static IEnumerable<string> FindWinmds(string root)
    {
        if (!Directory.Exists(root))
            yield break;

        foreach (var path in Directory.EnumerateFiles(root, "*.winmd", SearchOption.AllDirectories))
        {
            yield return path;
        }
    }

    private static int Main()
    {
        string dir = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location!)!, "winmd"); 
        List<string> paths = new List<string>();

        foreach (var winmd in FindWinmds(dir))
        {
            paths.Add(winmd);
        }

        paths.Sort();
        foreach (var path in paths)
        {
            Console.WriteLine("{0}", Path.GetFileNameWithoutExtension(path));
        }

        return 0;
    }
}
