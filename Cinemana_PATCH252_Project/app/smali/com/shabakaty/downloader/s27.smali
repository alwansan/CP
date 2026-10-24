.class public final Lcom/shabakaty/downloader/s27;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# static fields
.field public static final f:Lcom/shabakaty/downloader/pk2;

.field public static g:J


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "ApplicationAnalyticsSession"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/s27;->f:Lcom/shabakaty/downloader/pk2;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/shabakaty/downloader/s27;->g:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-wide v0, Lcom/shabakaty/downloader/s27;->g:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/s27;->c:J

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/s27;->d:I

    return-void
.end method
