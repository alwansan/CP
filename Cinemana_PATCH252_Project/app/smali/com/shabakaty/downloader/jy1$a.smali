.class public Lcom/shabakaty/downloader/jy1$a;
.super Ljava/lang/Object;
.source "ImageAnalysisBlockingAnalyzer.java"

# interfaces
.implements Lcom/shabakaty/downloader/ho1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/jy1;->e(Lcom/shabakaty/downloader/fz1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ho1<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/fz1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jy1;Lcom/shabakaty/downloader/fz1;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/jy1$a;->a:Lcom/shabakaty/downloader/fz1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/jy1$a;->a:Lcom/shabakaty/downloader/fz1;

    invoke-interface {p1}, Lcom/shabakaty/downloader/fz1;->close()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    return-void
.end method
