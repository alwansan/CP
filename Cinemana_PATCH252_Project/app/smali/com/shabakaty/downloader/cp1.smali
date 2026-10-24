.class public final Lcom/shabakaty/downloader/cp1;
.super Lcom/shabakaty/downloader/af2;
.source "GeneralNavigationExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/cx2;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/cp1;->r:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/cx2;

    const-string v0, "$this$navOptions"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/cp1;->r:I

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/cx2;->b(I)V

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
