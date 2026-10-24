.class public final Lcom/shabakaty/downloader/xq0$d;
.super Lcom/shabakaty/downloader/af2;
.source "DescriptorRendererImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xq0;->T(Lcom/shabakaty/downloader/qb0;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/qb0<",
        "*>;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xq0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xq0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xq0$d;->r:Lcom/shabakaty/downloader/xq0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/qb0;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0$d;->r:Lcom/shabakaty/downloader/xq0;

    .line 4
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xq0;->T(Lcom/shabakaty/downloader/qb0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
