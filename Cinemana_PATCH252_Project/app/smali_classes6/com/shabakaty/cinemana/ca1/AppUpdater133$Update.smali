.class final Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;
.super Ljava/lang/Object;
.source "AppUpdater133.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/AppUpdater133;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Update"
.end annotation


# instance fields
.field apkName:Ljava/lang/String;

.field apkUrl:Ljava/lang/String;

.field name:Ljava/lang/String;

.field releaseId:J

.field sha256:Ljava/lang/String;

.field size:J

.field tag:Ljava/lang/String;

.field updatedAt:Ljava/lang/String;

.field versionCodeHint:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->name:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->tag:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->updatedAt:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->apkName:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->apkUrl:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;->sha256:Ljava/lang/String;

    return-void
.end method
