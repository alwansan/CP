.class public final Lcom/google/android/gms/common/api/internal/m;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/google/android/gms/common/api/internal/c$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/c$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/m;->s:Lcom/google/android/gms/common/api/internal/c$a;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/m;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/m;->s:Lcom/google/android/gms/common/api/internal/c$a;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/m;->r:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/c$a;->c(I)V

    return-void
.end method
