.class public final Lcom/google/android/gms/cast/framework/media/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/ce5;


# instance fields
.field public final synthetic r:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;

.field public final synthetic s:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/b;->s:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/b;->r:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final o0(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/b;->r:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;

    iput-object p1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;->b:Landroid/graphics/Bitmap;

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/b;->s:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    .line 3
    iput-object v0, p1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->C:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->c()V

    return-void
.end method
