.class public final Lcom/shabakaty/downloader/iq3;
.super Lcom/shabakaty/downloader/af2;
.source "ReflectionObjectRenderer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/sz4;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/iq3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/iq3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/iq3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/iq3;->r:Lcom/shabakaty/downloader/iq3;

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
    check-cast p1, Lcom/shabakaty/downloader/sz4;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/hq3;->a:Lcom/shabakaty/downloader/hq3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    const-string v0, "it.type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/hq3;->e(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
