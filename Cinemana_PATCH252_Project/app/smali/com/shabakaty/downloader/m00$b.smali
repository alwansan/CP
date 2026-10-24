.class public final Lcom/shabakaty/downloader/m00$b;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lcom/shabakaty/downloader/te1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/m00;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/te1<",
        "Lcom/shabakaty/downloader/ky4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/te1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/te1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/m00$b;->r:Lcom/shabakaty/downloader/te1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/m00$b;->r:Lcom/shabakaty/downloader/te1;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/m00$b$a;

    invoke-direct {v1, p1, p0}, Lcom/shabakaty/downloader/m00$b$a;-><init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/m00$b;)V

    invoke-interface {v0, v1, p2}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
