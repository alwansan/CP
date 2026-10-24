.class public final Lcom/shabakaty/downloader/tf2$a;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaAnnotations.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/tf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/g62;",
        "Lcom/shabakaty/downloader/r8;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/tf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tf2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/tf2$a;->r:Lcom/shabakaty/downloader/tf2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/g62;

    const-string v0, "annotation"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/k62;->a:Lcom/shabakaty/downloader/k62;

    iget-object v1, p0, Lcom/shabakaty/downloader/tf2$a;->r:Lcom/shabakaty/downloader/tf2;

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/tf2;->r:Lcom/shabakaty/downloader/bg2;

    .line 5
    iget-boolean v1, v1, Lcom/shabakaty/downloader/tf2;->t:Z

    .line 6
    invoke-virtual {v0, p1, v2, v1}, Lcom/shabakaty/downloader/k62;->b(Lcom/shabakaty/downloader/g62;Lcom/shabakaty/downloader/bg2;Z)Lcom/shabakaty/downloader/r8;

    move-result-object p1

    return-object p1
.end method
