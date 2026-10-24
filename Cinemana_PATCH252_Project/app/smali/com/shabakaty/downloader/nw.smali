.class public final Lcom/shabakaty/downloader/nw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/nw$b;,
        Lcom/shabakaty/downloader/nw$f;,
        Lcom/shabakaty/downloader/nw$a;,
        Lcom/shabakaty/downloader/nw$c;,
        Lcom/shabakaty/downloader/nw$e;,
        Lcom/shabakaty/downloader/nw$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/shabakaty/downloader/nw$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/shabakaty/downloader/nw$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/h56;

    invoke-direct {v0}, Lcom/shabakaty/downloader/h56;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/common/api/a;

    sget-object v2, Lcom/shabakaty/downloader/yg5;->a:Lcom/google/android/gms/common/api/a$g;

    const-string v3, "Cast.API"

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v1, Lcom/shabakaty/downloader/nw;->a:Lcom/google/android/gms/common/api/a;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nw$b$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    return-void
.end method
