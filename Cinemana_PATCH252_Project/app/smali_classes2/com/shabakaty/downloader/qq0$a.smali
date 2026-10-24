.class public final Lcom/shabakaty/downloader/qq0$a;
.super Lcom/shabakaty/downloader/af2;
.source "DescriptorEquivalenceForOverrides.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/qq0;->a(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/ts4;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/qm0;",
        "Lcom/shabakaty/downloader/qm0;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/rq;

.field public final synthetic s:Lcom/shabakaty/downloader/rq;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/qq0$a;->r:Lcom/shabakaty/downloader/rq;

    iput-object p2, p0, Lcom/shabakaty/downloader/qq0$a;->s:Lcom/shabakaty/downloader/rq;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/qm0;

    check-cast p2, Lcom/shabakaty/downloader/qm0;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qq0$a;->r:Lcom/shabakaty/downloader/rq;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/qq0$a;->s:Lcom/shabakaty/downloader/rq;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
