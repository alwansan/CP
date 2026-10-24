.class final Lcom/shabakaty/cinemana/ca1/Continue106$Entry;
.super Ljava/lang/Object;
.source "Continue106.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Continue106;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation


# instance fields
.field d:J

.field id:Ljava/lang/String;

.field localPath:Ljava/lang/String;

.field p:J

.field parcel:Ljava/lang/String;

.field t:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->localPath:Ljava/lang/String;

    return-void
.end method
