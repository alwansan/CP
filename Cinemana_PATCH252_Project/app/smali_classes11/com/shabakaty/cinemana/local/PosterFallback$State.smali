.class final Lcom/shabakaty/cinemana/local/PosterFallback$State;
.super Ljava/lang/Object;
.source "PosterFallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/local/PosterFallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field attempted:Z

.field final key:Ljava/lang/String;

.field final primary:Ljava/lang/String;

.field final thumbnail:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/PosterFallback$State;->primary:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/PosterFallback$State;->thumbnail:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/PosterFallback$State;->key:Ljava/lang/String;

    return-void
.end method
