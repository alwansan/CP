.class public final Lcom/shabakaty/downloader/fw$a;
.super Lcom/shabakaty/downloader/af2;
.source "CapturedTypeConstructor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/fw;->a(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qe2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/qt4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qt4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/fw$a;->r:Lcom/shabakaty/downloader/qt4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fw$a;->r:Lcom/shabakaty/downloader/qt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    const-string v1, "this@createCapturedIfNeeded.type"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
