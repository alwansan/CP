.class public final Lcom/shabakaty/downloader/t12$b;
.super Ljava/lang/Object;
.source "InstallReferrerClientImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/t12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final r:Lcom/android/installreferrer/api/InstallReferrerStateListener;

.field public final synthetic s:Lcom/shabakaty/downloader/t12;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/t12;Lcom/android/installreferrer/api/InstallReferrerStateListener;Lcom/shabakaty/downloader/t12$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/t12$b;->s:Lcom/shabakaty/downloader/t12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/t12$b;->r:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please specify a listener to know when setup is done."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service connected."

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/jl3;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/t12$b;->s:Lcom/shabakaty/downloader/t12;

    sget v0, Lcom/shabakaty/downloader/zw1$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    .line 3
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    instance-of v1, v0, Lcom/shabakaty/downloader/zw1;

    if-eqz v1, :cond_1

    .line 5
    move-object p2, v0

    check-cast p2, Lcom/shabakaty/downloader/zw1;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/zw1$a$a;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/zw1$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 7
    :goto_0
    iput-object p2, p1, Lcom/shabakaty/downloader/t12;->c:Lcom/shabakaty/downloader/zw1;

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/t12$b;->s:Lcom/shabakaty/downloader/t12;

    const/4 p2, 0x2

    .line 9
    iput p2, p1, Lcom/shabakaty/downloader/t12;->a:I

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/t12$b;->r:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    const/4 p2, 0x0

    check-cast p1, Lcom/facebook/internal/InstallReferrerUtil$1;

    invoke-virtual {p1, p2}, Lcom/facebook/internal/InstallReferrerUtil$1;->a(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service disconnected."

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/jl3;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/t12$b;->s:Lcom/shabakaty/downloader/t12;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lcom/shabakaty/downloader/t12;->c:Lcom/shabakaty/downloader/zw1;

    const/4 v0, 0x0

    .line 4
    iput v0, p1, Lcom/shabakaty/downloader/t12;->a:I

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/t12$b;->r:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
