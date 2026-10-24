.class public final synthetic Lcom/shabakaty/downloader/ue7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/wn5;


# static fields
.field public static final a:Lcom/shabakaty/downloader/wn5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ue7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ue7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ue7;->a:Lcom/shabakaty/downloader/wn5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lcom/shabakaty/downloader/ft3;
    .locals 2

    check-cast p1, Ljava/lang/Void;

    sget-object p1, Lcom/shabakaty/downloader/pd7;->g:Lcom/shabakaty/downloader/pk2;

    .line 1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object p1
.end method
