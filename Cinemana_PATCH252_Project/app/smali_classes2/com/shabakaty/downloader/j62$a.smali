.class public final Lcom/shabakaty/downloader/j62$a;
.super Lcom/shabakaty/downloader/af2;
.source "JavaAnnotationMapper.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/j62;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/g62;Lcom/shabakaty/downloader/fi1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/b74;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/bg2;

.field public final synthetic s:Lcom/shabakaty/downloader/j62;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/j62;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/j62$a;->r:Lcom/shabakaty/downloader/bg2;

    iput-object p2, p0, Lcom/shabakaty/downloader/j62$a;->s:Lcom/shabakaty/downloader/j62;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j62$a;->r:Lcom/shabakaty/downloader/bg2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/j62$a;->s:Lcom/shabakaty/downloader/j62;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/j62;->a:Lcom/shabakaty/downloader/fi1;

    .line 6
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zd2;->j(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/q20;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    const-string v1, "c.module.builtIns.getBui\u2026qName(fqName).defaultType"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
