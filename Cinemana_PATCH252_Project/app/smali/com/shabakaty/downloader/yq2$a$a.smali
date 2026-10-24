.class public final Lcom/shabakaty/downloader/yq2$a$a;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yq2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Lcom/shabakaty/downloader/yq2;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/shabakaty/downloader/yq2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yq2$a$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/yq2$a$a;->b:Lcom/shabakaty/downloader/yq2;

    return-void
.end method
