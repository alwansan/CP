.class public Lcom/shabakaty/downloader/bj0;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/oj3<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/uk0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/bj0;->a:Lcom/shabakaty/downloader/uk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/uk0$y;

    iget-object v1, p0, Lcom/shabakaty/downloader/bj0;->a:Lcom/shabakaty/downloader/uk0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/uk0$y;-><init>(Lcom/shabakaty/downloader/uk0;Lcom/shabakaty/downloader/kj0;)V

    return-object v0
.end method
