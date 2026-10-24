.class public Lcom/shabakaty/downloader/mn0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/x30;


# static fields
.field public static final a:Lcom/shabakaty/downloader/mn0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mn0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/mn0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/mn0;->a:Lcom/shabakaty/downloader/mn0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
