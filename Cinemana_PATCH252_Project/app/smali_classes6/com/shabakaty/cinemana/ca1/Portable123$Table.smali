.class final Lcom/shabakaty/cinemana/ca1/Portable123$Table;
.super Ljava/lang/Object;
.source "Portable123.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Portable123;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Table"
.end annotation


# instance fields
.field columns:[Ljava/lang/String;

.field db:Ljava/lang/String;

.field name:Ljava/lang/String;

.field final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->rows:Ljava/util/List;

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->db:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/Portable123$Table;->columns:[Ljava/lang/String;

    return-void
.end method
