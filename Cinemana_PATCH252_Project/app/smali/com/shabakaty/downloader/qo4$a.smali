.class public Lcom/shabakaty/downloader/qo4$a;
.super Ljava/lang/Object;
.source "TorchControl.java"

# interfaces
.implements Lcom/shabakaty/downloader/sr$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qo4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/qo4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qo4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/qo4$a;->a:Lcom/shabakaty/downloader/qo4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/qo4$a;->a:Lcom/shabakaty/downloader/qo4;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method
