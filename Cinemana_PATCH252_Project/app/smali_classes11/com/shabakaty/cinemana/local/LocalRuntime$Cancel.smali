.class final Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;
.super Ljava/lang/Object;
.source "LocalRuntime.java"

# interfaces
.implements Lcom/shabakaty/downloader/mu0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cancel"
.end annotation


# instance fields
.field volatile cancelled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;->cancelled:Z

    return-void
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;->cancelled:Z

    return v0
.end method
