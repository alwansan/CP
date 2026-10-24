.class public Lcom/shabakaty/downloader/mk;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/google/android/material/snackbar/f;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mk;->r:Lcom/google/android/material/snackbar/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mk;->r:Lcom/google/android/material/snackbar/f;

    iget-object v0, v0, Lcom/google/android/material/snackbar/f;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e(I)V

    return-void
.end method
