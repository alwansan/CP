.class public Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
.super Ljava/lang/Object;
.source "MaterialButtonToggleGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final e:Lcom/shabakaty/downloader/le0;


# instance fields
.field public a:Lcom/shabakaty/downloader/le0;

.field public b:Lcom/shabakaty/downloader/le0;

.field public c:Lcom/shabakaty/downloader/le0;

.field public d:Lcom/shabakaty/downloader/le0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/h;-><init>(F)V

    sput-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->e:Lcom/shabakaty/downloader/le0;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/le0;Lcom/shabakaty/downloader/le0;Lcom/shabakaty/downloader/le0;Lcom/shabakaty/downloader/le0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->a:Lcom/shabakaty/downloader/le0;

    .line 3
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->b:Lcom/shabakaty/downloader/le0;

    .line 4
    iput-object p4, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->c:Lcom/shabakaty/downloader/le0;

    .line 5
    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->d:Lcom/shabakaty/downloader/le0;

    return-void
.end method
