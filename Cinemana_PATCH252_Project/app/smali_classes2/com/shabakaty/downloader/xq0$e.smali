.class public final Lcom/shabakaty/downloader/xq0$e;
.super Lcom/shabakaty/downloader/af2;
.source "DescriptorRendererImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xq0;->n0(Lcom/shabakaty/downloader/ts4;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/qe2;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/xq0$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/xq0$e;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xq0$e;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/xq0$e;->r:Lcom/shabakaty/downloader/xq0$e;

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

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Lcom/shabakaty/downloader/ve4;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/ve4;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/g1;->s:Lcom/shabakaty/downloader/ts4;

    :cond_0
    return-object p1
.end method
