.class Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;
.super Ljava/lang/Object;
.source "ExpiredLink269.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/local/ExpiredLink269;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Row"
.end annotation


# instance fields
.field database:Ljava/lang/String;

.field id:Ljava/lang/String;

.field image:Ljava/lang/String;

.field path:Ljava/lang/String;

.field progress:J

.field quality:Ljava/lang/String;

.field status:Ljava/lang/String;

.field task:I

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->quality:Ljava/lang/String;

    return-void
.end method
