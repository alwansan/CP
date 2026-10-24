.class public Lcom/shabakaty/downloader/wf0;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/tf0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wf0;->r:Lcom/shabakaty/downloader/tf0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wf0;->r:Lcom/shabakaty/downloader/tf0;

    invoke-static {v0}, Lcom/shabakaty/downloader/tf0;->a(Lcom/shabakaty/downloader/tf0;)V

    const/4 v0, 0x0

    return-object v0
.end method
