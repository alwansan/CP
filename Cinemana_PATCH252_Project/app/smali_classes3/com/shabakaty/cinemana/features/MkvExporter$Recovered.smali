.class final Lcom/shabakaty/cinemana/features/MkvExporter$Recovered;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private final context:Landroid/content/Context;
.field private final item:Ljava/lang/Object;
.field private final source:Ljava/io/File;
.field private final key:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/MkvExporter$Recovered;->context:Landroid/content/Context;
    iput-object p2, p0, Lcom/shabakaty/cinemana/features/MkvExporter$Recovered;->item:Ljava/lang/Object;
    iput-object p3, p0, Lcom/shabakaty/cinemana/features/MkvExporter$Recovered;->source:Ljava/io/File;
    iput-object p4, p0, Lcom/shabakaty/cinemana/features/MkvExporter$Recovered;->key:Ljava/lang/String;
    return-void
.end method
.method public run()V
    .locals 4
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/MkvExporter$Recovered;->context:Landroid/content/Context;
    iget-object v1, p0, Lcom/shabakaty/cinemana/features/MkvExporter$Recovered;->item:Ljava/lang/Object;
    iget-object v2, p0, Lcom/shabakaty/cinemana/features/MkvExporter$Recovered;->source:Ljava/io/File;
    iget-object v3, p0, Lcom/shabakaty/cinemana/features/MkvExporter$Recovered;->key:Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->runRecovered(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;Ljava/lang/String;)V
    return-void
.end method
