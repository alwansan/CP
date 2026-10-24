.class public final Lcom/shabakaty/downloader/fb5;
.super Lcom/shabakaty/downloader/nb5;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$b;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$c;


# static fields
.field public static h:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/shabakaty/downloader/mb5;",
            "Lcom/shabakaty/downloader/x54;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/shabakaty/downloader/mb5;",
            "Lcom/shabakaty/downloader/x54;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/shabakaty/downloader/t30;

.field public f:Lcom/shabakaty/downloader/mb5;

.field public g:Lcom/shabakaty/downloader/gb5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/v95;->a:Lcom/google/android/gms/common/api/a$a;

    sput-object v0, Lcom/shabakaty/downloader/fb5;->h:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/shabakaty/downloader/t30;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/fb5;->h:Lcom/google/android/gms/common/api/a$a;

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/nb5;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/fb5;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/fb5;->b:Landroid/os/Handler;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/fb5;->e:Lcom/shabakaty/downloader/t30;

    .line 6
    iget-object p1, p3, Lcom/shabakaty/downloader/t30;->b:Ljava/util/Set;

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/fb5;->d:Ljava/util/Set;

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/fb5;->c:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method


# virtual methods
.method public final c0(Lcom/shabakaty/downloader/hc5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fb5;->b:Landroid/os/Handler;

    new-instance v1, Lcom/shabakaty/downloader/md7;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/fb5;Lcom/shabakaty/downloader/hc5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/fb5;->f:Lcom/shabakaty/downloader/mb5;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/mb5;->b(Lcom/shabakaty/downloader/db5;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/shabakaty/downloader/gb0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fb5;->g:Lcom/shabakaty/downloader/gb5;

    check-cast v0, Lcom/google/android/gms/common/api/internal/c$c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/c$c;->b(Lcom/shabakaty/downloader/gb0;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/fb5;->f:Lcom/shabakaty/downloader/mb5;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->p()V

    return-void
.end method
