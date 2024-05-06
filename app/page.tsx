import Image from "next/image";
import styles from "./page.module.css";

export default function Home() {
  return (
    <main className={styles.main}>
      <h1 className={styles.title}>
        A site will be opened at this location soon 😍
      </h1>
    </main>
  );
}
