.class public Lcom/shabakaty/downloader/gu$a;
.super Ljava/lang/Object;
.source "CameraStateRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/vt$a;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lcom/shabakaty/downloader/gu$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vt$a;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/gu$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/gu$a;->a:Lcom/shabakaty/downloader/vt$a;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/gu$a;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/gu$a;->c:Lcom/shabakaty/downloader/gu$b;

    return-void
.end method
