.class public final Lcom/shabakaty/downloader/s01$a$a;
.super Ljava/lang/Object;
.source "DrmSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/s01$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Lcom/shabakaty/downloader/s01;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/shabakaty/downloader/s01;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/s01$a$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/s01$a$a;->b:Lcom/shabakaty/downloader/s01;

    return-void
.end method
