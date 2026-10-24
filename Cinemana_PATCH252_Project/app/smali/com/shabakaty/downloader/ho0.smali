.class public final Lcom/shabakaty/downloader/ho0;
.super Ljava/lang/Object;
.source "DefaultHlsDataSourceFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/gt1;


# instance fields
.field public final a:Lcom/shabakaty/downloader/vl0$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vl0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ho0;->a:Lcom/shabakaty/downloader/vl0$a;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/shabakaty/downloader/vl0;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ho0;->a:Lcom/shabakaty/downloader/vl0$a;

    invoke-interface {p1}, Lcom/shabakaty/downloader/vl0$a;->a()Lcom/shabakaty/downloader/vl0;

    move-result-object p1

    return-object p1
.end method
