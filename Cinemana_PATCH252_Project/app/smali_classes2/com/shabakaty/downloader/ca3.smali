.class public Lcom/shabakaty/downloader/ca3;
.super Lcom/shabakaty/downloader/da3;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/da3<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/da3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/da3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ca3;->a:Lcom/shabakaty/downloader/da3;

    invoke-direct {p0}, Lcom/shabakaty/downloader/da3;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/zr3;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/ca3;->a:Lcom/shabakaty/downloader/da3;

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/shabakaty/downloader/da3;->a(Lcom/shabakaty/downloader/zr3;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
