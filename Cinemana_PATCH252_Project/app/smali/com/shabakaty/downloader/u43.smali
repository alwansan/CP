.class public Lcom/shabakaty/downloader/u43;
.super Landroidx/databinding/b;
.source "ObservableBoolean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/u43;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/u43$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/u43$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/u43;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroidx/databinding/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/databinding/b;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/u43;->s:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/u43;->s:Z

    if-eq p1, v0, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/u43;->s:Z

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object p1, p0, Landroidx/databinding/a;->r:Landroidx/databinding/e;

    if-nez p1, :cond_0

    .line 5
    monitor-exit p0

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, p0, v0, v1}, Landroidx/databinding/c;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/shabakaty/downloader/u43;->s:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
