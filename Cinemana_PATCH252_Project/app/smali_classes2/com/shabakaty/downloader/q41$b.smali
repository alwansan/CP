.class public final Lcom/shabakaty/downloader/q41$b;
.super Lcom/shabakaty/downloader/af2;
.source "ErasedOverridabilityCondition.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/q41;->b(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/q20;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/sz4;",
        "Lcom/shabakaty/downloader/qe2;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/q41$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/q41$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q41$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q41$b;->r:Lcom/shabakaty/downloader/q41$b;

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
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/sz4;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    return-object p1
.end method
