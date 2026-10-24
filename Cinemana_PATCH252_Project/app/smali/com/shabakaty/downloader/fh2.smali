.class public final synthetic Lcom/shabakaty/downloader/fh2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/t80;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/shabakaty/downloader/gh2$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/gh2$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fh2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/fh2;->b:Lcom/shabakaty/downloader/gh2$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/q80;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/fh2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/fh2;->b:Lcom/shabakaty/downloader/gh2$a;

    .line 1
    const-class v2, Landroid/content/Context;

    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/gh2$a;->extract(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/lh;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
