.class public final Lcom/shabakaty/downloader/hg2;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaStaticClassScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/qe2;",
        "Lcom/shabakaty/downloader/q20;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/hg2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/hg2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hg2;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/hg2;->r:Lcom/shabakaty/downloader/hg2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/qe2;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p1

    instance-of v0, p1, Lcom/shabakaty/downloader/q20;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/q20;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
