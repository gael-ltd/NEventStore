call Build.RunTask.bat package 0
nuget pack src\.Nuget\NEventStore.nuspec -OutputDirectory %2 -Version %1 -includereferencedprojects