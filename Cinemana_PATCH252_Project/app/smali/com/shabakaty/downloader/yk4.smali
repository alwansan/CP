.class public abstract Lcom/shabakaty/downloader/yk4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/yk4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/a$b;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:[Lcom/shabakaty/downloader/ia1;

.field public final b:Z


# direct methods
.method public constructor <init>([Lcom/shabakaty/downloader/ia1;ZILcom/shabakaty/downloader/ml3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yk4;->a:[Lcom/shabakaty/downloader/ia1;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/yk4;->b:Z

    return-void
.end method

.method public static a()Lcom/shabakaty/downloader/yk4$a;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "ResultT:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/shabakaty/downloader/yk4$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yk4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/yk4$a;-><init>(Lcom/shabakaty/downloader/ml3;)V

    return-object v0
.end method
