.class public final Lcom/shabakaty/downloader/g32$a;
.super Lcom/shabakaty/downloader/af2;
.source "IntersectionTypeConstructor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/g32;->g()Lcom/shabakaty/downloader/b74;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/ve2;",
        "Lcom/shabakaty/downloader/b74;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/g32;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/g32;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/g32$a;->r:Lcom/shabakaty/downloader/g32;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ve2;

    const-string v0, "kotlinTypeRefiner"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/g32$a;->r:Lcom/shabakaty/downloader/g32;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/g32;->i(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/g32;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/g32;->g()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1
.end method
