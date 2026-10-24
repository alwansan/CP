.class public final Lcom/shabakaty/downloader/s46;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/at5;
.implements Landroid/os/IInterface;


# instance fields
.field public final a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/s46;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s46;->a:Landroid/os/IBinder;

    return-object v0
.end method
