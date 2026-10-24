.class public final Lcom/google/android/gms/common/api/internal/d$c;
.super Lcom/shabakaty/downloader/nc5;
.source "com.google.android.gms:play-services-base@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/d;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d$c;->a:Lcom/google/android/gms/common/api/internal/d;

    .line 2
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/nc5;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->a(Z)V

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/d$b;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$c;->a:Lcom/google/android/gms/common/api/internal/d;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/d;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/d$b;->b()V

    goto :goto_1

    .line 6
    :cond_1
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/d$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/d$b;->b()V

    .line 8
    throw v0
.end method
