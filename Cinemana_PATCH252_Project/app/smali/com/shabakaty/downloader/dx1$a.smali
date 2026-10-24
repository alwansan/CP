.class public abstract Lcom/shabakaty/downloader/dx1$a;
.super Landroid/os/Binder;
.source "IMultiInstanceInvalidationCallback.java"

# interfaces
.implements Lcom/shabakaty/downloader/dx1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/dx1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dx1$a$a;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public static r(Landroid/os/IBinder;)Lcom/shabakaty/downloader/dx1;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "androidx.room.IMultiInstanceInvalidationCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/dx1;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/dx1;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/dx1$a$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/dx1$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
