.class public abstract Lcom/google/android/datatransport/runtime/backends/b;
.super Ljava/lang/Object;
.source "BackendResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/backends/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/datatransport/runtime/backends/b;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/a;

    sget-object v1, Lcom/google/android/datatransport/runtime/backends/b$a;->t:Lcom/google/android/datatransport/runtime/backends/b$a;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/backends/a;-><init>(Lcom/google/android/datatransport/runtime/backends/b$a;J)V

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()Lcom/google/android/datatransport/runtime/backends/b$a;
.end method
