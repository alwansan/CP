.class public final synthetic Lcom/shabakaty/downloader/me7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/wn5;


# static fields
.field public static final a:Lcom/shabakaty/downloader/wn5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/me7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/me7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/me7;->a:Lcom/shabakaty/downloader/wn5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lcom/shabakaty/downloader/ft3;
    .locals 1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object v0, Lcom/shabakaty/downloader/pd7;->g:Lcom/shabakaty/downloader/pk2;

    return-object p1
.end method
