.class public final Lcom/shabakaty/downloader/ij$k;
.super Lcom/shabakaty/downloader/ij$f;
.source "com.google.android.gms:play-services-basement@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ij$f;"
    }
.end annotation


# instance fields
.field public final g:Landroid/os/IBinder;

.field public final synthetic h:Lcom/shabakaty/downloader/ij;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ij;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ij$k;->h:Lcom/shabakaty/downloader/ij;

    .line 2
    invoke-direct {p0, p1, p2, p4}, Lcom/shabakaty/downloader/ij$f;-><init>(Lcom/shabakaty/downloader/ij;ILandroid/os/Bundle;)V

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/ij$k;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final d(Lcom/shabakaty/downloader/gb0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij$k;->h:Lcom/shabakaty/downloader/ij;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ij;->M:Lcom/shabakaty/downloader/ij$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ij$b;->onConnectionFailed(Lcom/shabakaty/downloader/gb0;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ij$k;->h:Lcom/shabakaty/downloader/ij;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ij;->o(Lcom/shabakaty/downloader/gb0;)V

    return-void
.end method

.method public final e()Z
    .locals 7

    const-string v0, "GmsClient"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/ij$k;->g:Landroid/os/IBinder;

    const-string v3, "null reference"

    .line 2
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/ij$k;->h:Lcom/shabakaty/downloader/ij;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ij;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/ij$k;->h:Lcom/shabakaty/downloader/ij;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ij;->l()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "service descriptor mismatch: "

    const-string v6, " vs. "

    invoke-static {v4, v5, v3, v6, v2}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ij$k;->h:Lcom/shabakaty/downloader/ij;

    iget-object v2, p0, Lcom/shabakaty/downloader/ij$k;->g:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ij;->f(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/ij$k;->h:Lcom/shabakaty/downloader/ij;

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, Lcom/shabakaty/downloader/ij;->J(Lcom/shabakaty/downloader/ij;IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/shabakaty/downloader/ij$k;->h:Lcom/shabakaty/downloader/ij;

    const/4 v3, 0x3

    .line 8
    invoke-static {v2, v3, v4, v0}, Lcom/shabakaty/downloader/ij;->J(Lcom/shabakaty/downloader/ij;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij$k;->h:Lcom/shabakaty/downloader/ij;

    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lcom/shabakaty/downloader/ij;->P:Lcom/shabakaty/downloader/gb0;

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij;->Q0()Landroid/os/Bundle;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/ij$k;->h:Lcom/shabakaty/downloader/ij;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/ij;->L:Lcom/shabakaty/downloader/ij$a;

    if-eqz v1, :cond_2

    .line 14
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/ij$a;->onConnected(Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1

    :catch_0
    const-string v2, "service probably died"

    .line 15
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
